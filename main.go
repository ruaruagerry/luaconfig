/*
 * @Author: gerryluo
 * @Date: 2020-01-07 14:41:30
 * @LastEditTime : 2020-01-07 14:48:58
 * @LastEditors  : Please set LastEditors
 * @Description: test
 * @FilePath: \luaconfig\main.go
 */

package main

import (
	"fmt"
	"luaconfig/luaconfig"

	"github.com/bilibili/kratos/pkg/conf/paladin"
	"github.com/goinggo/mapstructure"
	"github.com/prometheus/common/log"
)

type globalItem struct {
	ID      int32
	KeyName string
	Value   int32
}

type global struct {
	ItemSlice []*globalItem
	ItemMap   map[string]*globalItem
}

// main
func main() {
	luastr, err := paladin.Get("global.lua").String()
	if err != nil {
		msg := fmt.Sprintf("paladin get global err, err:%s", err.Error())
		panic(msg)
	}
	luadata := luaconfig.TransferLua(luastr)

	gc := &global{
		ItemSlice: []*globalItem{},
		ItemMap:   map[string]*globalItem{},
	}

	for _, v := range luadata.([]interface{}) {
		tmp := v.(map[interface{}]interface{})

		tmpstrcut := &globalItem{}
		//将 map 转换为指定的结构体
		if err := mapstructure.Decode(tmp, tmpstrcut); err != nil {
			panic(err)
		}

		log.Info("#### global v:%v", *tmpstrcut)

		gc.ItemSlice = append(gc.ItemSlice, tmpstrcut)
		gc.ItemMap[tmpstrcut.KeyName] = tmpstrcut
	}
}
