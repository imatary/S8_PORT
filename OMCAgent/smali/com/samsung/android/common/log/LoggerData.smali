.class public Lcom/samsung/android/common/log/LoggerData;
.super Lcom/samsung/android/common/log/Logger$Impl;
.source "LoggerData.java"

# interfaces
.implements Lcom/samsung/android/common/log/Logger$Core;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/common/log/LoggerData$SecOff;
    }
.end annotation


# static fields
.field private static final priorities:[I


# instance fields
.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/common/log/LoggerData;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/common/log/LogLineInfo;->excludeClass([Ljava/lang/Class;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/common/log/LoggerData;->priorities:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/log/Logger$Impl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/common/log/LoggerData;->setTagName(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized getTagName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/common/log/LoggerData;->tagName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isSecLogEnabled()Z
    .locals 3

    const-string v0, "1"

    const-string v1, "persist.log.seclevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/common/log/LoggerData;
    .locals 1

    invoke-static {}, Lcom/samsung/android/common/log/LoggerData;->isSecLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/common/log/LoggerData$SecOff;

    invoke-direct {v0, p0}, Lcom/samsung/android/common/log/LoggerData$SecOff;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/common/log/LoggerData;

    invoke-direct {v0, p0}, Lcom/samsung/android/common/log/LoggerData;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/common/cipher/AESCrypt;->encryptorLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public println(ILjava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/common/log/LoggerData;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Lcom/samsung/android/common/log/LogLineInfo;

    invoke-direct {v0}, Lcom/samsung/android/common/log/LogLineInfo;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/common/log/LogLineInfo;->makeLogLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/common/log/LoggerData;->priorities:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/samsung/android/common/log/LoggerData;->getTagName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Logger: Invalid priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/samsung/android/common/log/LoggerData;->priorities:[I

    aget v0, v0, p1

    invoke-direct {p0}, Lcom/samsung/android/common/log/LoggerData;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setTagName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/common/log/LoggerData;->tagName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
