local HelloModule: IHelloModule = {}
function HelloModule.test()
	print("Eu amo jogar video games")
end

type IHelloModule = typeof(HelloModule)
return HelloModule :: IHelloModule
