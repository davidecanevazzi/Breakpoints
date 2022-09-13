
import re
if __name__ == '__main__':
    save=[]
    paf=[]
    with open("breakpoints.mother.txt") as br:
        for i in br:
            paf.append(i)

        for i in range(2,len(paf)-1):
            line_curr=str(paf[i]).split()
            line_prev=str(paf[i-1]).split()
            line_next=str(paf[i+1]).split()
            if line_curr[0] != '--' and line_prev[0] != '--' and line_next[0] != '--':
                if (line_curr[5]== 'chrM' and (line_prev[5]!='chrM' or line_next[5]!='chrM') and (line_prev[0]==line_curr[0] or line_next[0]==line_curr[0])): #here I check if one signle k-mers is splitted
                    if (line_curr[0][-2:]==line_next[0][-2:]):
                        if line_curr[3] < line_next[2]:
                            if line_curr[4] == '-':
                                print(line_curr[7])
                            if line_curr[4] == '+':
                                print(line_curr[8])
                        if line_curr[2] > line_next[3]:
                            if line_curr[4] == '-':
                                print(line_curr[8])
                            if line_curr[4] == '+':
                                print(line_curr[7])
                    if (line_curr[0][-2:]==line_prev[0][-2:]):
                        if line_curr[3] < line_prev[2]:
                            if line_curr[4] == '-':
                                print(line_curr[7])
                            if line_curr[4] == '+':
                                print(line_curr[8])
                        if line_curr[2] > line_prev[3]:
                            if line_curr[4] == '-':
                                print(line_curr[8])
                            if line_curr[4] == '+':
                                print(line_curr[7])
                elif (line_curr[5]== 'chrM' and (line_prev[5]!='chrM' or line_next[5]!='chrM') and  (line_prev[0][0:36]==line_curr[0][0:36] or line_next[0][0:36]==line_curr[0][0:36])):
                    n = int(re.sub("[^0-9]", "", line_curr[0][-2:]))
                    if line_prev[0][0:36] == line_curr[0][0:36] and line_prev[5]!='chrM':
                        n_prev=int(re.sub("[^0-9]", "", line_prev[0][-2:]))
                        if n>n_prev:
                            if line_curr[4]=='-':
                                print(line_curr[8])
                            if line_curr[4]=='+':
                                print(line_curr[7])
                    elif line_next[0][0:36] == line_curr[0][0:36] and line_next[5]!='chrM':
                        n_next = int(re.sub("[^0-9]", "", line_next[0][-2:]))
                        if n < n_next:
                            if line_curr[4]=='-':
                                    print(line_curr[7])
                            if line_curr[4]=='+':
                                    print(line_curr[8])




