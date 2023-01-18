
import re
if __name__ == '__main__':
    save=[]
    paf=[]
    with open("somatic_breakpoints_mother_uniq.txt") as br:
        for i in br:
            paf.append(i)

        for i in range(2,len(paf)-1):
            line_curr=str(paf[i]).split()
            line_prev=str(paf[i-1]).split()
            line_next=str(paf[i+1]).split()
            if line_curr[0] != '--' and line_prev[0] != '--' and line_next[0] != '--':
                if (line_curr[5]== 'chrM' and line_prev[5]!='chrM'): #here I check if one signle k-mers is splitted
                    if (line_curr[0][:-3]==line_prev[0][:-3]):
                        if line_prev[4] == '-':
                            print(line_prev[5], "   ", line_prev[7])
                        if line_prev[4] == '+':
                            print(line_prev[5], "   ",line_prev[8])

