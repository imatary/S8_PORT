.class public Lcom/samsung/android/app/omcagent/db/OmcPref$NETWORK_TYPE;
.super Ljava/lang/Object;
.source "OmcPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/OmcPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NETWORK_TYPE"
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "OMC.Network.Type"

.field public static final NETWORK_TYPE_ALL:I = 0x1

.field public static final NETWORK_TYPE_WIFI_ONLY:I


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
    const-string v0, "Wi-Fi"

    goto :goto_0

    :pswitch_1
    const-string v0, "All"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
