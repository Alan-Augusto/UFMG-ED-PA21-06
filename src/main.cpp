#include <iostream>
#include <sstream>
#include <string.h>

using namespace std;

int main()
{

    int numtextos;
    string texto;
    string palavra;

    cin >> numtextos;

    string lixo;
    getline(cin, lixo);

    for (int i = 0; i < numtextos; i++)
    {
        bool temPalavra = false;
        getline(cin, texto);
        getline(cin, palavra);
        stringstream textoaux(texto);
        string palavraux;

        int tamtexto = texto.length();
        for (int j = 0; j < tamtexto; j++)
        {
            if (texto[j - 1] == ' ' || j == 0)
            {
                textoaux >> palavraux;
                if (palavra == palavraux)
                {
                    if (temPalavra)
                    {
                        cout << " ";
                    }
                    cout << j;
                    temPalavra = true;
                }
            }
        }

        if (!temPalavra)
        {
            cout << -1;
        }
        cout << endl;
    }
}