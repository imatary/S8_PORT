.class public Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;
.super Ljava/lang/Object;
.source "MediaProfile.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final audioBitrate:I

.field public final audioChannel:I

.field public final audioEncoder:I

.field public final audioSamplingRate:I

.field public final outputFormat:I

.field public final videoBitrate:I

.field public final videoEncoder:I

.field public final videoFps:I

.field public final videoHeight:I

.field public final videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const v9, 0x3e800

    const v8, 0xbb80

    const/16 v4, 0x1e

    const/4 v6, 0x3

    const/4 v1, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCL/2.0.56/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    sget-object v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    const/16 v2, 0x780

    const/16 v3, 0x438

    const v5, 0x1036640

    move v7, v1

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;-><init>(IIIIIIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    const/16 v2, 0x5a0

    const/16 v3, 0x438

    const v5, 0xc65d40

    move v7, v1

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;-><init>(IIIIIIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    const v5, 0xb71b00

    move v7, v1

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;-><init>(IIIIIIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    const/16 v2, 0x2d0

    const/16 v3, 0x1e0

    const v5, 0x34a0a8

    move v7, v1

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;-><init>(IIIIIIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    const v5, 0x2ef770

    move v7, v1

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;-><init>(IIIIIIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    const/16 v2, 0x140

    const/16 v3, 0xf0

    const v5, 0xbb418

    move v7, v1

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;-><init>(IIIIIIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    const/16 v2, 0xb0

    const/16 v3, 0x90

    const v5, 0x5dc00

    move v7, v1

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;-><init>(IIIIIIIIII)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(IIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoEncoder:I

    iput p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoWidth:I

    iput p3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoHeight:I

    iput p4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoFps:I

    iput p5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoBitrate:I

    iput p6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioEncoder:I

    iput p7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioChannel:I

    iput p8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioSamplingRate:I

    iput p9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioBitrate:I

    iput p10, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->outputFormat:I

    return-void
.end method

.method public static getProfile(Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;

    iget v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v3

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No matching MediaProfile for given parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->sProfiles:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->videoEncoder:I

    packed-switch v1, :pswitch_data_0

    const-string v1, " with unknown codec, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioBitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Ch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/MediaProfile;->audioEncoder:I

    packed-switch v1, :pswitch_data_1

    :pswitch_0
    const-string v1, " with unknown codec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    const-string v1, " with H.264 codec, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, " with H.263 codec, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, " with AMR_NB codec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v1, " with AAC codec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
