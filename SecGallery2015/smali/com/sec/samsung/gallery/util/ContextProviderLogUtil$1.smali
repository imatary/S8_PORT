.class final Lcom/sec/samsung/gallery/util/ContextProviderLogUtil$1;
.super Ljava/lang/Object;
.source "ContextProviderLogUtil.java"

# interfaces
.implements Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogUtils$LoggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;
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
    .locals 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->getLogInfos()[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil$2;->$SwitchMap$com$sec$samsung$gallery$util$unifiedlogging$UnifiedLoggingType$SubType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->getSubType()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    aget-object v1, v0, v6

    check-cast v1, Landroid/content/Context;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->access$000(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    aget-object v1, v0, v6

    check-cast v1, Landroid/content/Context;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->access$100(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto :goto_0

    :pswitch_2
    aget-object v1, v0, v6

    check-cast v1, Landroid/content/Context;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    aget-object v1, v0, v6

    check-cast v1, Landroid/content/Context;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->access$300(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0

    :pswitch_4
    aget-object v1, v0, v6

    check-cast v1, Landroid/content/Context;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v2, v3, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
