︠b74a1196-4baa-49c9-a2b1-d268ac735f96r︠

#Conjecture: x^2+2x-1 is prime infinitely often, for x in ZZ.
def primeConjecture(val):
    p=[]
    y=val**2+2*val-1
    for i in range(1,val+1):
        x=i**2+2*i-1
        if x in Primes():
            p.append(x)
        if Primes().next(x) > y:
            break
    return p
︡d4741553-56f7-422a-a044-0f7408c7dc1a︡{}︡{"stdout":"","done":true}︡
︠187525e8-c56e-499c-9d57-980b191fc3car︠
len(10**3)
︡a5c98847-7f80-4bfb-8d9e-4cdeee9bb2f2︡{}︡{"stderr":"Error in lines 1-1\n"}︡{"stderr":"Traceback (most recent call last):\n"}︡{"stderr":"  File \"/home2/91313a45/.sagemathcloud/sage_server.py\", line 406, in execute\n"}︡{"stderr":"    exec compile(block, '', 'single') in namespace, locals\n"}︡{"stderr":"  File \"\", line 1, in <module>\n"}︡{"stderr":"TypeError: object of type 'sage.rings.integer.Integer' has no len()\n"}︡{"stdout":"","done":true}︡
︠0f799cbc-f17c-4edf-b949-a6c7a6b96013r︠
len(primeConjecture(10**4))
︡33a70aea-e8f8-4643-a02f-9a5274c5e1cd︡{}︡{"stdout":"1153"}︡{"stdout":"\n"}︡{"stdout":"","done":true}︡
︠b031e932-c2f8-4577-bad7-4346cb887149
len(primeConjecture(10**5))
︡bdbc8463-22d0-432b-8f56-07584a014d97︡{}︡{"stdout":"8888"}︡{"stdout":"\n"}︡{"stdout":"","done":true}︡
︠4feb966e-ca37-4aae-bb8c-c6c899fec708︠
