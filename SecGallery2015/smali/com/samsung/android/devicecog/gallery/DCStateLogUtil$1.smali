.class final Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$1;
.super Ljava/lang/Object;
.source "DCStateLogUtil.java"

# interfaces
.implements Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$LoggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLog(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->getLogInfos()[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$2;->$SwitchMap$com$sec$samsung$gallery$util$unifiedlogging$UnifiedLoggingType$SubType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->getSubType()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    # invokes: Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;Z)V
    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->access$000(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;Z)V

    goto :goto_0

    :pswitch_1
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->EXIT:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    # invokes: Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;Z)V
    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->access$000(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;Z)V

    goto :goto_0

    :pswitch_2
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCOutputParam(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->access$100(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
