.class public Lcom/samsung/android/app/omcagent/update/omc/Configs$DownloadRequestValueType;
.super Ljava/lang/Object;
.source "Configs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/omc/Configs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadRequestValueType"
.end annotation


# static fields
.field public static final DEVICE_UPGRADE:I = 0x4

.field public static final DEVICE_UPGRADE_STR:Ljava/lang/String; = "FOTA"

.field public static final DIFFERENT_SIM:I = 0x3

.field public static final DIFFERENT_SIM_STR:Ljava/lang/String; = "SIM_CHANGE"

.field public static final NONE:I = -0x1

.field public static final NONE_STR:Ljava/lang/String; = "NONE"

.field public static final POLLING:I = 0x2

.field public static final POLLING_STR:Ljava/lang/String; = "POLLING"

.field public static final PULL:I = 0x1

.field public static final PULL_STR:Ljava/lang/String; = "PULL"

.field public static final PUSH:I = 0x5

.field public static final PUSH_STR:Ljava/lang/String; = "PUSH"

.field public static final REGISTER:I = 0x0

.field public static final REGISTER_STR:Ljava/lang/String; = "OOBE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitTypeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "NONE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "OOBE"

    goto :goto_0

    :pswitch_1
    const-string v0, "PULL"

    goto :goto_0

    :pswitch_2
    const-string v0, "POLLING"

    goto :goto_0

    :pswitch_3
    const-string v0, "SIM_CHANGE"

    goto :goto_0

    :pswitch_4
    const-string v0, "FOTA"

    goto :goto_0

    :pswitch_5
    const-string v0, "PUSH"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
