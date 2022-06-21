#include <iostream>
#include <sstream>
#include <string.h>

using namespace std;

int main() {

    int numtextos;
    string texto;
    string palavra;
    
    
    cin >> numtextos;

    string lixo;
    getline(cin, lixo);

    for(int i = 0; i< numtextos; i++){
        getline(cin, texto);
        getline(cin, palavra);
        stringstream textoaux(texto);
        string palavraux;
        int countwords = 0;

        int tamtexto = texto.length();
        for(int j=0; j<tamtexto; j++){
            if(texto[j-1] == ' ' || j==0){
                textoaux >> palavraux;
                if(palavra == palavraux){
                    if(countwords >0){
                        cout << " ";
                    }
                    cout << j;
                    countwords++;

                }
            }
            if((j+1==tamtexto)&& countwords == 0){
                cout << -1;
            }
        }
        cout << "" << endl;
    }

}