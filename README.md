# eInkBoard v2
An embedded system for displaying current number of followers on bilibili. A reproduction of [eInkBoard v1](https://csy-tvgo.github.io/website-of-eInkBoard/) *(this page is in Chinese)*.  
一个能显示哔哩哔哩账号实时粉丝数的嵌入式系统，[eInkBoard v1](https://csy-tvgo.github.io/website-of-eInkBoard/) 的复刻版。  
  
Video: https://www.bilibili.com/video/BV1sq4y1j7DV
[![video banner](./bilibili上的视频封面.jpg)](https://www.bilibili.com/video/BV1sq4y1j7DV)

## 简介  
本 repo 包含了制作 eInkBoard v2 的完整代码，可复现 [这个视频](https://www.bilibili.com/video/BV1sq4y1j7DV) 中展示的效果。读者可以直接基于此 repo 来制作自己的粉丝计数器，也可以基于这些代码来了解赤焰剑、ESP8266、墨水屏等组件的使用方法。  
本实施例使用平头哥 CH2201 “赤焰剑” 开发板作为主控制器（搭载基于玄铁 802 内核的 CB2201 SoC），外挂乐鑫 ESP8266-01 模块来连接 WiFi 接入互联网，使用 SPI 接口的奇耘 GDEW042T2 电子墨水屏进行显示。  
  
本 repo 包含以下三部分：
1. [将图片转换成 C 语言数组](#1-将图片转换成-C-语言数组)  
2. [在赤焰剑上开发主程序](#2-在赤焰剑上开发主程序)  
3. [在 ESP8266 上开发联网相关的程序](#3-在-esp8266-上开发联网相关的程序)  
  
如有疑问可在 [VeriMake 论坛](https://verimake.com/) 中提出。

### 1. 将图片转换成 C 语言数组  
  在 [1.ImageToArray](./1.ImageToArray) 中，使用 Jupyter Notebook 打开 `01.ImageToArray.ipynb` 阅读详细代码。  
  可将图片转换成声明 C 语言数组的代码，便于写入 MCU 代码。  
  
### 2. 在赤焰剑上开发主程序  
  在 [2.CH2201_Code](./2.CH2201_Code) 中是赤焰剑上运行的代码，可结合平头哥相关库函数，使用[平头哥剑池 CDK 开发工具](https://occ.t-head.cn/development/activities/cdk/)编译并烧写。  
  主程序每隔一段时间通过 UART 从 ESP8266 处接收它获取到的粉丝数量，处理图片后，通过 SPI 传输给电子墨水屏进行显示。  
  
### 3. 在 ESP8266 上开发联网相关的程序  
  在 [3.ESP8266-01_Code](./3.ESP8266-01_Code) 中是 ESP8266-01 模块上运行的代码，可使用 Arduino IDE 进行编译并烧写。  
  该部分程序会让 ESP8266 通过设定好的 WiFi 接入互联网，再每隔 5 秒调用 B 站 API 获取特定用户的粉丝数量，然后将数据打包成特定格式通过 UART 发出。此外，代码中还包含了控制 ESP8266-01 模块上的指示灯的程序。
  （其实 ESP8266 可以独立运行应用程序，我们制作 eInkBoard v2 时选用赤焰剑外挂 ESP8266 是为了复刻一代的样式）

