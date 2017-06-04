.class public Lcom/samsung/android/app/omcagent/update/app/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;
    }
.end annotation


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/update/app/Widget;

.field private static widgetList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/Widget;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/Widget;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/Widget;->instance:Lcom/samsung/android/app/omcagent/update/app/Widget;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateWidgetList(Landroid/content/Context;)V
    .locals 6

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/update/app/PostPositioning$ParserDefaultWorkspace;->parseDefaultWorkspace(Ljava/util/HashMap;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "generateWidgetList"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setAppWidgetSize(Landroid/content/Context;I)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget packageName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    aget-object v5, v1, v0

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;

    iget-object v2, v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget className : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    aget-object v5, v1, v0

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;

    iget-object v2, v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->className:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getWidgetItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;
    .locals 6

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "widget null"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widgetList size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getAppWidgetSize(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/update/app/Widget;->generateWidgetList(Landroid/content/Context;)V

    :cond_1
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget packageName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    aget-object v5, v1, v0

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;

    iget-object v2, v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widget className : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    aget-object v5, v1, v0

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;

    iget-object v2, v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;->className:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;

    goto/16 :goto_0
.end method

.method public getWidgetList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    return-object v0
.end method

.method public setWidgetList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/omcagent/update/app/Widget$WidgetItem;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/samsung/android/app/omcagent/update/app/Widget;->widgetList:Ljava/util/HashMap;

    return-void
.end method
