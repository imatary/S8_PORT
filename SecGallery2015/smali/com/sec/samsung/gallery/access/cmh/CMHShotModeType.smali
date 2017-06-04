.class public Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;
.super Ljava/lang/Object;
.source "CMHShotModeType.java"


# static fields
.field public static final ANIMATED_GIF:Ljava/lang/String; = "Animated GIF"

.field public static final BURST_SHOT:Ljava/lang/String; = "Burst shot"

.field public static final DUAL_CAMERA:Ljava/lang/String; = "Dual Camera"

.field public static final FAST_MOTION:Ljava/lang/String; = "Fast motion"

.field public static final HYPER_LAPSE:Ljava/lang/String; = "Hyperlapse"

.field public static final IMAGE_360:Ljava/lang/String; = "360\u00b0 image"

.field public static final IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PANORAMA:Ljava/lang/String; = "Panorama"

.field public static final SELECTIVE_FOCUS:Ljava/lang/String; = "Selective focus"

.field public static final SELFIE:Ljava/lang/String; = "Selfie"

.field public static final SELFIE_SHOT_MODE_TYPE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOT_N_MORE:Ljava/lang/String; = "Shot & more"

.field public static final SLOW_MOTION:Ljava/lang/String; = "Slow motion"

.field public static final SOUND_N_SHOT:Ljava/lang/String; = "Sound & shot"

.field public static final SURROUND_SHOT:Ljava/lang/String; = "Surround shot"

.field public static final VIDEO_360:Ljava/lang/String; = "360\u00b0 video"

.field public static final VIDEO_COLLAGE:Ljava/lang/String; = "Video collage"

.field public static final VIDEO_FLIP:Ljava/lang/String; = "Flip"

.field public static final VIDEO_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIRTUAL_SHOT:Ljava/lang/String; = "Virtual shot"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/16 v1, 0x8e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Panorama"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/16 v1, 0x840

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Selective focus"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/16 v1, 0x960

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Animated GIF"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/16 v1, 0x8d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Virtual shot"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/16 v1, 0xa20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Dual Camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/16 v1, 0x830

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Shot & more"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Sound & shot"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/16 v1, 0x950

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Surround shot"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->IMAGE_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/16 v1, 0xa50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "360\u00b0 image"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->SELFIE_SHOT_MODE_TYPE:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->SELFIE_SHOT_MODE_TYPE:Ljava/util/ArrayList;

    const/16 v1, 0x900

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->SELFIE_SHOT_MODE_TYPE:Ljava/util/ArrayList;

    const/16 v1, 0x910

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->SELFIE_SHOT_MODE_TYPE:Ljava/util/ArrayList;

    const/16 v1, 0x970

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->SELFIE_SHOT_MODE_TYPE:Ljava/util/ArrayList;

    const/16 v1, 0x980

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->VIDEO_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->VIDEO_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Slow motion"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->VIDEO_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Hyperlapse"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->VIDEO_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Fast motion"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->VIDEO_SHOT_MODE_TYPE:Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Video collage"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
