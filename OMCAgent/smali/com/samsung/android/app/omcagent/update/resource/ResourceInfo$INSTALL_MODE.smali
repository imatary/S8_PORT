.class public Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$INSTALL_MODE;
.super Ljava/lang/Object;
.source "ResourceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "INSTALL_MODE"
.end annotation


# static fields
.field public static final MANDATORY:I = 0x1

.field public static final OPTIONAL:I = 0x2

.field public static final RESOURCE:I = 0x4

.field public static final SECURITY:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FWUPDATE_UNKNOWN_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "mandatory"

    goto :goto_0

    :pswitch_1
    const-string v0, "optional"

    goto :goto_0

    :pswitch_2
    const-string v0, "security"

    goto :goto_0

    :pswitch_3
    const-string v0, "resource"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
