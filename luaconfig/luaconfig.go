/*
 * @Author: gerryluo
 * @Date: 2020-01-07 14:40:42
 * @LastEditTime : 2020-01-07 14:48:45
 * @LastEditors  : Please set LastEditors
 * @Description: golang read lua
 * @FilePath: \luaconfig\luaconfig.go
 */

package luaconfig

import (
	"github.com/yuin/gluamapper"
	lua "github.com/yuin/gopher-lua"
)

// TransferLua 转换lua
func TransferLua(paladinValue string) interface{} {
	l := lua.NewState()

	if err := l.DoString(paladinValue); err != nil {
		panic(err)
	}

	g1 := l.Get(1)
	g2 := l.GetField(g1, "Items")

	govalue := gluamapper.ToGoValue(g2, gluamapper.Option{
		NameFunc: gluamapper.ToUpperCamelCase,
	})

	l.Remove(1)

	return govalue
}
