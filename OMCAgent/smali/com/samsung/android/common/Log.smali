.class public Lcom/samsung/android/common/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final ALL:Lcom/samsung/android/common/log/LoggerCollection;

.field public static final DATA:Lcom/samsung/android/common/log/LoggerData;

.field public static final FILE:Lcom/samsung/android/common/log/LoggerFile;

.field public static final TAG_NAME:Ljava/lang/String; = "OMC_AGENT"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/common/Log;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/samsung/android/common/log/LogLineInfo;->excludeClass([Ljava/lang/Class;)V

    const-string v0, "OMC_AGENT"

    invoke-static {v0}, Lcom/samsung/android/common/log/LoggerData;->newInstance(Ljava/lang/String;)Lcom/samsung/android/common/log/LoggerData;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    new-instance v0, Lcom/samsung/android/common/log/LoggerFile;

    invoke-direct {v0}, Lcom/samsung/android/common/log/LoggerFile;-><init>()V

    sput-object v0, Lcom/samsung/android/common/Log;->FILE:Lcom/samsung/android/common/log/LoggerFile;

    new-instance v0, Lcom/samsung/android/common/log/LoggerCollection;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/common/log/Logger$Core;

    sget-object v2, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/common/Log;->FILE:Lcom/samsung/android/common/log/LoggerFile;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/samsung/android/common/log/LoggerCollection;-><init>([Lcom/samsung/android/common/log/Logger$Core;)V

    sput-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/log/LoggerCollection;->D(Ljava/lang/String;)V

    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/log/LoggerCollection;->E(Ljava/lang/String;)V

    return-void
.end method

.method public static H(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/log/LoggerCollection;->H(Ljava/lang/String;)V

    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/log/LoggerCollection;->I(Ljava/lang/String;)V

    return-void
.end method

.method public static V(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/log/LoggerCollection;->V(Ljava/lang/String;)V

    return-void
.end method

.method public static W(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/log/LoggerCollection;->W(Ljava/lang/String;)V

    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->ALL:Lcom/samsung/android/common/log/LoggerCollection;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/log/LoggerCollection;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/common/Log;->FILE:Lcom/samsung/android/common/log/LoggerFile;

    new-instance v1, Lcom/samsung/android/common/log/LogDescriptor$Limit;

    new-instance v2, Lcom/samsung/android/common/log/LogFileDescriptor;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/samsung/android/common/log/LogFileDescriptor;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/32 v4, 0x100000

    invoke-direct {v1, v2, v4, v5}, Lcom/samsung/android/common/log/LogDescriptor$Limit;-><init>(Lcom/samsung/android/common/log/LogDescriptor$Stream;J)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/LoggerFile;->setLogDescriptor(Lcom/samsung/android/common/log/LogDescriptor;)V

    :cond_0
    return-void
.end method

.method public static setLogDescriptor(Lcom/samsung/android/common/log/LogDescriptor;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->FILE:Lcom/samsung/android/common/log/LoggerFile;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/log/LoggerFile;->setLogDescriptor(Lcom/samsung/android/common/log/LogDescriptor;)V

    return-void
.end method

.method public static setTagName(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->DATA:Lcom/samsung/android/common/log/LoggerData;

    invoke-virtual {v0, p0}, Lcom/samsung/android/common/log/LoggerData;->setTagName(Ljava/lang/String;)V

    return-void
.end method

.method public static shift()V
    .locals 1

    sget-object v0, Lcom/samsung/android/common/Log;->FILE:Lcom/samsung/android/common/log/LoggerFile;

    invoke-virtual {v0}, Lcom/samsung/android/common/log/LoggerFile;->shift()V

    return-void
.end method
