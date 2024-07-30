--!strict
type createElementFn = <P, T>(
    type_: React_StatelessFunctionalComponent<P>
        | React_ComponentType<P>
        | React_AbstractComponent<P, T>
        | string
        | ReactContext<any>
        | ReactProviderType<any>
        | LazyComponent<T, P>,
    props: P?,...
(React_Node | (...any) -> React_Node)
) -> ReactElement<P, T>

-- type testing = <V , T>(

-- ) -> ()

-- type main = ((type_:number)->("this is number"))&(type_:string)->("this is string")

-- -- function f  (t)

-- -- end
-- local f = function(t: number | string)
    
-- end :: main

-- -- print(type(f(5)))

-- f(5)

-- type main = (((type_:string)->(number))&(type_:number)->(string))


-- -- function f(t: main)
    
-- -- end

-- -- f("t")


-- type returnsAOnB<A,B> = (arg: B)->(A)

-- local fn: returnsAOnB<string, boolean> & returnsAOnB<boolean, number> = function ()

-- end

-- print(type(fn(true)))

-- local typetable = {}

-- function f<T>(p: T , typetable[typeof(T)])


-- end

-- -- 조건부 타입 정의
-- type ConditionallyTyped<T> = T extends string and string or T extends number and number or nil

-- -- 제네릭 함수를 정의
-- local function f<T>(t: T, n: ConditionallyTyped<T>)
--     print(t, n)
-- end

-- -- 함수 사용 예시
-- f("hello", "world")  -- 정상: t가 string이면 n도 string
-- f(123, 456)          -- 정상: t가 number이면 n도 number
-- -- f("hello", 123)   -- 오류: t가 string이므로 n도 string이어야 함
-- -- f(123, "world")   -- 오류: t가 number이므로 n도 number이어야 함
