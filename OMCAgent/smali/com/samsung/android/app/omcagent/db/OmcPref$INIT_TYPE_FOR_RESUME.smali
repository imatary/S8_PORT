.class public Lcom/samsung/android/app/omcagent/db/OmcPref$INIT_TYPE_FOR_RESUME;
.super Ljava/lang/Object;
.source "OmcPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/OmcPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "INIT_TYPE_FOR_RESUME"
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "OMC.INITTYPE.FORRESUME"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "none"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "REGISTER"

    goto :goto_0

    :pswitch_2
    const-string v0, "PULL"

    goto :goto_0

    :pswitch_3
    const-string v0, "POLLING"

    goto :goto_0

    :pswitch_4
    const-string v0, "DIFFERENT_SIM"

    goto :goto_0

    :pswitch_5
    const-string v0, "DEVICE_UPGRADE"

    goto :goto_0

    :pswitch_6
    const-string v0, "PUSH"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
