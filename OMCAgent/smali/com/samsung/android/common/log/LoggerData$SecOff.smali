.class public Lcom/samsung/android/common/log/LoggerData$SecOff;
.super Lcom/samsung/android/common/log/LoggerData;
.source "LoggerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/log/LoggerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecOff"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/samsung/android/common/log/LoggerData$SecOff;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/samsung/android/common/log/LogLineInfo;->excludeClass([Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/common/log/LoggerData;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public println(ILjava/lang/String;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/common/log/LoggerData;->println(ILjava/lang/String;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
