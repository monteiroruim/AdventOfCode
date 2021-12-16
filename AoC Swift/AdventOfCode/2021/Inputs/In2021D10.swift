//
//  In2021D10.swift
//  AdventOfCode
//
//  Created by Pereira Orlando on 10.12.21.
//  Copyright © 2021 Pereira Orlando. All rights reserved.
//

import Foundation

class In2021D10 {
    
    private var inputDebug = """
{([(<{}[<>[]}>{[]{[(<()>
[[<[([]))<([[{}[[()]]]
[{[{({}]{}}([{[{{{}}([]
[<(<(<(<{}))><([]([]()
<{([([[(<>()){}]>(<<{{
"""
    private var input = """
<[<<<<[{[<({{({}<>)<[]{}>}[<<>{}>{<>{}}]}{(({}<>){()<>}){{[]<>}{[]}}})>([{{(()[])[{}()]}}(<{{}<>}
<<[<<{[<<<{{<(()[])>[({}{})]}}({{({}())[<>{}]}}{{(<><>)[<>()]}<<<>{}><<>()>>})>{[[<(<>[])[[]{}]>{{[]<>}<[]
<[{<<(<([{<[<{()<>}<{}[]>>([<>()]{<>()})]{[([][])<{}<>>][<<><>>]}>}][[[<{{[]{}}[[][]]}([{}[]]<[]<>
<{[(<<[({([{<[{}[]]{<>{}}>}[(({}()){[]<>])]]{{<<[]>([]<>)><<{}()>{<>[]}>}{({<><>}<<>{}>){(()[])<()<>>}}})
[{<{[(({[[<<<<<>()>{(){}}>[{[]{}}(<><>)]>{[<[][]>(()<>)]<<[]()><()()>>}>])}(<{<[<<{}[]>>{[()[]]({}{})}]>{
[<{<[[[<{[<<[{<>{}}<(){}>]{<{}{}><{}{}>}>{<(()<>){<><>}>}><[<{{}()}>{{<>()}{()<>}}]({<{}<>>}[{()<>}[()()]])
(([(<({[<<({{<()()]{[]{}}}[{<>()}[[]()]]}({[<><>]}<[<>{}][()<>]>)){{[[[]<>]<<><>>](({}{}){{}()})}}>>]})>)<((
(<<({((<<(<{([()]<()[]>)}[{(()<>)(()())}{{()<>}<()()>}]>)({[<(<>())((){})><{<><>}[{}<>]>][[[<>
[(<([{[[[{{{([()()]([]()))[<[][]>[<><>]]}{(<[]>[(){}]){[<>{}]{{}()}}}>[<<[[][]][{}()]>[<<>{}>
{<{[[[{<<([({[<><>][(){}]}({(){}}[{}<>]))<{[(){}][<>{}]}{(()()){{}[]}}>]{[((()[])<()[]>)<<(){}>{{
[<[{{{({([({<<(){}>[{}<>]><{{}<>}[<><>]>}[[<(){}>([]{})]<{(){}}[{}[]]>])[<({<>{}}<{}<>>)({<><>})>]]){(<(({
<<{[[{[[(<[{[[{}()][()[]]](<[]{}>(<>))}(([{}()])<[{}()](<>())))]><(<[[<>{}](<>())][[<>()][()]]>{<<<><>>[()[
<<([<[{{[[({[{()}[{}<>]]({{}{}}{<><>})}<{{{}()}<()[]>}<<{}{}><[][]>>>)<{([[]<>]<{}()>)][([{}()
[(<<[[{<<{<[[<()[]>({}<>)]<{[]<>}<{}<>>>]{<<()<>>[[]{}]>([{}()]{()()})}>[<{((){})[{}()]}[([]{})<()[
[<<(<{[{{[<{(([])({}())){<<>>{()[]}}}{[(<><>)[[]()]]{<<><>><()<>>]}><((<<>()>{<>{}})){[{()()}][[()[]]([]{})
((<[({<[(({[{(()())<(){}>}<[[]<>]{()()}>]({<()<>>(<>())})}<(<[[][]]{<>[]}><<[]<>>[{}[]]>)<{([]{})[{}()]}([[]
[([{<[{(<<({[<{}()>([][])]{({}<>){{}[]}}}[<((){}){<>{}})[{(){}}]])({([{}<>]{<>{}})})>[<<{<{}<>><[
[{{{[<({({{{[<{}()><[][]>]({{}{}}([]))}{<[<>{}]{{}{}>><{{}<>}>}}}[[[([{}()](()()))][({<>{}}{<>{}}){
[<{[{{(<{[<[(<()()>{()[]}){{{}{}}(<><>)}]<<({}{}){{}()}>{([])(<><>)}>>[({{[]{}}})<{(<><>){(){}}}((()<
<[<<[<(([<[{(<[][]>(<>[]}){{{}<>}[{}()]}}]<[[<{}{}>{()()}][[<>()]]]([<()>(()[])])>>][{[((<[
[{({<[[{<<[<[(<>{})<[]{}>]<<[]{}>[<><>]>>{({()<>}[<><>])}]><{{{{[]()}{<>[]}}<((){})>}({<(){}>[
{[<([[<(((<{<{[]<>}<[][]>>}>)))[<<{[([[]<>]([][]))(({}<>)<<><>>)]<{{{}{}}<<><>>}([()<>](()()>)>}>>]>{({<{
{{{{(([<(<{({(()())([][])}{({}()){[]{}}})}({(((){})[{}[]])}{((<><>){<><>}>[<{}[]>{<>[]}]})><[{<(<>[
<[<[<(<<<{(([[(){}]({}<>)]){<[()<>]{()()}>[[{}{}](<>)]})((((()<>)({}<>])[[{}<>][<><>]])(<<{}{}>(()()
[[{(([<{<[[({{{}{}}<[]<>>}{([]){<>()}})[(<[]()>(<><>)){<<>()>{()[]}}]]]>(<[[{(()<>)[[]{}]}(([]())(()
{<<(<<([(<(<({[]{}}{[]<>})>({([]<>)<[]{}>})){{([(){}]([]<>)){[[]()]}}}>{<{((()](<>()))}[(<{}<>>((){})
[({{{{{(<{({[{<>())(()())][<[]<>><[][]>]}{<[<><>][()()]>[<()()>([]{})]})<[[([][])<[]()>]<([][])<()<>>>]
[[[<([<[<(<{(([]<>)<{}<>>)<[{}[]]<()[]>>}{{([]()){()[]}}([{}{}](()()))}><{{<()<>><()()>}{<{}<>}{<>()}}}{{[[
(<({({[[(<[{<{(){}}[{}{}]><{()()}>}[([<>()]({}<>)){<{}()>({}[])}]]>)[[(([(<>[])<()<>>]){[<
({<[<{<<{{{({[()[]]})({[()()]{{}()}}(([]<>)<<>[]>))}}}>>(([({<[{[]}[[]()]][[<>[]]([]<>)]>({[<>()]{
{{(<[{({<[{{[{{}()}(<>{})]{[()[]]([]{})}}{([[]()][[]])[[[]()][()[]]}}}[<[<{}()>[{}[]]]>({<[]()>([
<(([(([[[[(([({}{}){()<>}]<{()[]}([]<>)]))]][{[({{<>()}<{}<>>})([[<>()]])](<[<<>()>]({()<>}{[]{}})>{[(()
([<{[<<<(<[{(<{}<>>[<>()])[<(){}>]}[[[()[]][()<>]]<<[]{}><<>()>>]]<[<{{}<>}{()<>}>{{[]()}})(<<<><>>>{
[{({{<(((({(<{(){}}>((())(()<>)))((<{}{}>((){}))<[[]]((){})>)})(<(([[]{}]<<><>>)<{()[]>(<>())>)>))))>}{{{({
[{(<<{{(<[{({{{}{}}{<><>}})}(<{({}<>)[<>{}]}<[{}{}]{{}{}}>>)]>([[{(<[][])<[]<>>)<(()<>)[[][]]>}[({()<>
<[([[((([{<[{(<>{}){<>()}}(({}[]])]([([]())<<>[]>])>[{<[{}<>](<>[])>}<[[(){}][{}()]]{{{}<>}[{}[]]}>]}])))][{(
(<[[(({({{[<<[<>[]][<>{}]>[[<>{}]((){})]><<<{}<>>[<>{}]><{[]{}}[()<>]>>]([[[<>{}]{()()}]<<()<
[{{{{<<{{{{<({<>()}((){}))(<[][]>{[][]})>{<(()<>)[()<>]><<{}{}>{{}[]}>}}<[[<{}{}>]{[<>()]<<><>>}]{<(()())<{}
([(<<{[{(<{<(<{}{}><{}<>>)[(<>[]){(){}}]>({<[]()>(<>{})}<{[]{}}[(){}]>)}>([[<<[]()>(<>)>(<<>[
<(<<{<{[{[<[{<()<>>([][])}]>]}]}><<<[([{(({}{})(()()))({()()}<<>>)}([(<>{})(<>[])][({}<>)[[]<>
<([[((<[<[[((<{}<>><{}()>)<(<>{})<[]<>>>)[<{()}({}())>{[[]{}]{()[]}}]]<<[(()[])(<>())]{<[]<>>
<<{{{<<({{<[<[<>()]{{}<>}>{<()<>>{[]{}}}]>}}{({[<[()[]][<>{}]>((()[])<{}()>)]}([{[[]{}]<[]<>>}{([]
(({[(<({<{[[{<<><>>({}[])}(<<><>>[[]{}]))(<{<>{}}[[]{}]>[[<>{}]({}{})])][<[<()[]><()<>>]><[({}[])[<>()]]<([](
([([[([(<{[<([<>{}][(){}]){<<>()><()<>>}>{[{()<>}[[][]]][[{}{}]<(){}>]}]([<[[]()]{{}[]}>[{<>[]}[[](
({((<[(<(({{([{}[]](<>()))[({}())]}[{[<>{}]<<>()>}{[{}]}]}({{<[][])[{}[]]}}((<<>{}><<>{}>))))<[<{[(){}][{
{([<{{(({[(<<{<>{}}[<><>]>{(<>[])({}())}>{((()[])[{}]){([][])((){})}})][<[<<[]()>{(){}}>]((<{}()>[{}()])<<{
{{<<(<[<(((({{{}<>}{[]<>}}[(<><>){[]()}]))[<{([]<>)<[]()>}([[]{}]<()>)>{{[<>[]]({}<>)}{<<>[]>[<><>
[<({{[{{[(<[[<[][]>{<>{}}][{{}[]}[(){}]]]>{{(<{}[]>(<>()))<((){})>}[{([])}]}){[<[{()<>}<[][]>][[
({<{{{(({({<(<{}[]>[[]<>])>})}<{(([{<>{}}<<>()>](([]<>){()[]}))([({}{}]{{}{}}][{()[]}{()()}]
((((<({[[<(<{(()[])((){})}>(([{}()]<<><>>)[{()[]]{{}}]))[[{(<>()){<><>}}{<<>[]>[[]<>]}][[{
({<[<((<({<<((<><>)(<>[]))[{[]{}}{[]{}}]>{[[()()]{()()}]{[<>{}]}}><({[[][]][()<>]})>}([[[(
({<(<<<<<(<[<[<>()](()>>][<<<>()>[{}[]]><(<><>)>]><({<<>{}>}[<<><>>{(){}}])[{{<>{}}<[]<>>}]>)(<{{{()()}
[<<[{[<{([([{<()()>[{}[]]}<<()[]>{()()}>][<<{}>[[]<>]>{[()[]][[]()]}]){[((()<>)<{}[]>){[[]()][{
[{[<{<{(({{<(({}[]))[[{}[]]{[][]}]>}}<([{(()[])}<[[]()]>]{<<<>()>[<>[]>>[[[]()][[][]]]})>){<<[<<{}()>(()
<(({{<{{<[{(<[[]<>]><({}{}){[]{}}>){{[[]{}]({}<>)}<((){})<<><>>>}}{[(([]<>)[{}<>])({<><>})]<(<()<>>{(
[[{[(<(<<[(<[[<>[]]((){})]{[<><>]<{}[]>}>)<[{{()[]>(<>{})}(({}[]){{}[]})]<<[{}{}]>{[{}{}]}>>][{([<()<>>({}
[({<({[[<[{<<{{}[]}<(){}>><[[]()][{}{}]>><{([])([])}[({}<>){()()}]>}{[{<{}{}>[<>()]}]({({}[
{{<[<[(([<{[{{[]{}}[[]{}]}]}>[[(<{[]()}(()())><{(){}}(<>())>)[<([]()){{}<>}>[<[]<>>{{}[]}]]](((({}
{(<<[(({{[[{([[][]]{{}()})([()<>][{}{}])}]([[{[]<>}({}{}]][<{}[]>]](({{}[]}){<{}[]>((){})}))][<((
{{{{({{({[{{([{}[]]<(){}>)<<[]()>([]<>)>>{[{{}()}]<[{}]<()()>>}}[[{<[][]>{[]{}}}({()[]}<[]()>)][<[{
[{{[[({[[[[((<{}[]><{}[]>){[{}{}]{()[]}})({{(){}}([])}<<[]()>[{}{}]>)]}{{{({[]}({}))<((){}){{}<>}>}{{
[<{([{(<{(((([()<>]<()<>>)[[<>()]([]{})])[(({}()))<<<>()><[]>>])[<{{<>{}}[()()]}(<[][]>{()()}
({(({{<[{<{((<{}{}>{{}[]})<{{}()}{{}()}>)[[({}()){[]<>}]{<()>[{}<>]}]}><{[[(<>{})<[][]>]<{{}<>}{{
(({{(({(<[[{[<<>{}>{[]()}][{[]{}]{(){}}]}(((()[]){{}{}})<(()())>)]([<[{}[]]>])][<{{[{}[]]<<><>>}{[[
((<[[<<<[([<[<<><>>([][])](<[][]>{<><>})>((({}<>)((){})))>[[<[<><>]<{}<>>><({}[])([]{})>]])[{[{({}<>)[()[]
[<((({{({(({<(()())<{}[]>>(<[]{}>({}{}))}))[<<[({}[])[{}[]]]<{{}{}}{[]}>>>]}[(<({<{}()>[<>()]}[<[]()>((){
[[([(((<{[[[<[{}()}({}<>)>]]{<{{<><>}({}())}{{<><>}([]{})}>}]}[([{[{[][]}(()<>)]{{<>{}}[<>(
<<([<{{<{<<(<([]<>)><(<><>){{}{}}>)<(<()<>>([]<>)){(<>{}><<>>}>>{(((()[]){{}[]})[[[][]][{}[]]])({([
[<[{<[<<(([{({[]{}}([][]))<[()<>]{{}<>}>}]<<[<{}>[<>{}]][([]<>)(<>[])]>[{((){})(()())}<[{}()]{<>()}>]>){([
[[[{[(({<<{{{((){})({})}{[<>()]([]<>)}}{[<<>{}>[{}[]]][[{}<>][()<>]]}}>{<{{([]{}){{}[]}}<{<>{
{{{<{[[<[{[<[<<>()>{{}()}][[<>{}][[]<>]]>]<{<{(){}}({}{})><(<>())[{}()]>)<{[()()]}[<()<>>(<>)]>>}
(([[<{(([<[((<(){}>[{}()]){([]{})[<>{}]})[[[<><>](<>[])]((()()))]][{{<()[]><<>{}>}}]>])<({[[({()<>}[<>{}])]]
{{({[({[[<(((({}[])(()()))))(<<<{}()>[{}]>>(<[<>[]]{[]()}>{({}<>)([][])}))>]{({{<(<><>)>[{
<<((({[([[{<<{<>{}}[[][]]><{()()}<{}<>>>>}[[[<<>()>([]())]({<><>}{{}[]})]<{<{}<>>[[]()]}{{(){}
<[{(([<(<{{[[{{}()}([]<>)](<{}()>{[]{}})]}<[[<()[]>(()())]{([]{})[<>{}]}]<<{[][]}><<<>()>>>>
<([(([{([([(<[{}[]][[]()]>(<{}[]>[<><>]))<<{{}()}<<>[]>>>])[[<[{<>()}[()()]]<[{}()]((){})>>]{[{(()[])<(
((<([<[[{[{{[(<><>)<[]()>][(<><>)[<>{}]]}}<(([{}()]{<><>})<([])[()()]>)>]{(({[()[])[[]()]}[(<>)])[<{{}
{<{<<{{[{<(([{(){}}<<>[]>]<{{}{}}{()[]}>)[<[[]{}><<><>>><[<>()]>])>{(<({{}{}}{<>{}})[<<>[]>]>)((<{
[<<<(({{{[(<{([][])[{}<>]}<(()[])(()())>>[{{<>{}}({})}[<<>>[<>]]]){([{()()}[()[]]]{[()[]]<<>>
<{{{<(<<{([[(<{}()>(<>{}))]](({[[][]]}({[]<>}{[]<>}))<([{}{}][[]])[<[]()><{}<>>]>))[<<<<()><[][]>>{(()())<[]
{{[[{[[{{{[{([<>[]][<>[]>)[({}[]){{}{}}]}[(((){})[()])(({}[])[<>])]]}<[<{<[]{}>({}<>)}{[{}[]]((){}
{([<([([{(((([()[]][[]<>])[<[]()><()>])({({}{})<[][]>}[([]<>){[]<>}])))<<{[[{}{}]][{(){}}{[]()}
<<[(([{<((<[({<>{}})[(()){[][]}]]>))>}]<({((([{([][])({}<>)}<<()()>([]())>])){{{{[{}{}]<<>[]>}{(()[])
[[{<([[{<{((({<>{}}[{}{}])([[]()]{{}[]}))({<[][]><<>{}>})){<(<<><>>({}<>))<([]){<>{}}>>(<<<
([({<<{<(<((<(<>{})({})><[[][]](()())>)([[{}{}]([]())][<()[]>[{}[]]])){<[<{}{}]{<>()}][([]{}){<><>}]>}>)>{[[(
{<(([<([(([(({[]<>}[{}<>])[(()<>){()[]}])<<{[][]}>({<>[]}{[]<>})>]{{{<(){}><()()>}({[]{}}{{}[]}))([([]())
{[<([[{[({[<{{(){}}}{(()[])<()[]>}>]<<<{()[]}><{{}()}([]{})>>{{<<>()><<>[]>>{{<>[]}{<><>}}}>
(<(<{[{[([[[([<><>])][({[]{}}({}[]))]]])[<[{({{}<>}([]()))(<{}><()()>)}(<<{}<>><<>()>)<<{}
(<[(({{<[{({{<()[]>}{{<>}<<>[]]}}{[{<><>}[{}<>]]((<>))})([[[<>{}]]<([])>])}{<({<[]<>><<>()>}[({}())[<>
{[({([(<{[[[<<<>[]>(()<>)>]<(([]{})[[][]])(<[]()><{}<>>)>](({{<><>}<()<>>}{[{}{}]([]<>)})[<{<>}[[]{}]
"""
    
    public init() {
    }
    
    public func getInput() -> String {
        return input
    }
    
    public func getInputDebug() -> String {
        return inputDebug
    }
    
}