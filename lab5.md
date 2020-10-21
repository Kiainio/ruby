# lab5 1015
## rails 相关 gem 功能调研
---
### 1. activejob
- >Declare job classes that can be run by a variety of queuing backends.
- Active Job 框架负责声明作业，在各种队列后端中运行。作业各种各样，可以是定期清理、账单支付和寄信。其实，任何可以分解且并行运行的工作都可以。
- 主要作用是确保所有 Rails 应用都有作业基础设施。这样便可以在此基础上构建各种功能和其他 gem，而无需担心不同作业运行程序（如 Delayed Job 和 Resque）的 API 之间的差异。此外，选用哪个队列后端只是战术问题。而且，切换队列后端也不用重写作业。
### 2. activemodel
- >A toolkit for building modeling frameworks like Active Record. Rich support for attributes, callbacks, validations, serialization, internationalization, and testing.
- Active Model 库包含很多模块，用于开发要在 Active Record 中存储的类。如属性方法、回调、是否被修改、序列化、翻译、测试等。
### 3. activerecord
- >Databases on Rails. Build a persistent domain model by mapping database tables to Ruby classes. Strong conventions for associations, validations, aggregations, migrations, and testing come baked-in.
- Active Record 是 MVC 中的 M（模型），负责处理数据和业务逻辑。Active Record 负责创建和使用需要持久存入数据库中的数据。Active Record 实现了 Active Record 模式，是一种对象关系映射系统。
### 4. activesupport
- >A toolkit of support libraries and Ruby core extensions extracted from the Rails framework. Rich support for multibyte strings, internationalization, time zones, and testing.
- Active Support 是 Ruby on Rails 的一个组件，扩展了 Ruby 语言，提供了一些实用功能。Active Support 丰富了 Rails 使用的编程语言，目的是便于开发 Rails 应用以及 Rails 本身。
- 其中包括一份监测 API，在应用中可以用它测度 Ruby 代码（如 Rails 应用或框架自身）中的特定操作。不过，这个 API 不限于只能在 Rails 中使用，如果愿意，也可以在其他 Ruby 脚本中使用。
### 5. actionmailer
- >Email on Rails. Compose, deliver, and test emails using the familiar controller/view pattern. First-class support for multipart email and attachments.
- Rails 使用 Action Mailer 实现发送邮件功能，邮件由邮件程序和视图控制。邮件程序继承自 ActionMailer::Base，作用与控制器类似，保存在 app/mailers 文件夹中，对应的视图保存在 app/views 文件夹中。
### 6. actionpack
- >Web apps on Rails. Simple, battle-tested conventions for building and testing MVC web applications. Works with any Rack-compatible server.
- >Action Pack is a framework for handling and responding to web requests. It provides mechanisms for routing (mapping request URLs to actions), defining controllers that implement actions, and generating responses by rendering views, which are templates of various formats. In short, Action Pack provides the view and controller layers in the MVC paradigm.
### 7. actionview
- >Simple, battle-tested conventions and helpers for building web pages.
- 在 Rails 中，Web 请求由 Action Controller和 Action View 处理。通常，Action Controller 参与和数据库的通信，并在需要时执行 CRUD 操作，然后由 Action View 负责编译响应。
- Action View 模板使用混合了 HTML 标签的嵌入式 Ruby 语言编写。为了避免样板代码把模板弄乱，Action View 提供了许多辅助方法，用于创建表单、日期和字符串等常用组件。随着开发的深入，为应用添加新的辅助方法也很容易。
