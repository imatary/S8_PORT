.class public final enum Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;
.super Ljava/lang/Enum;
.source "SCloudTempDownloadCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_360_CONTENTS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_AGIF:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_BURST_SHOT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_EDIT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_INTERACTIVE_SHOT_CONTENTS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_MOTION_PHOTO:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_OUT_OF_FOCUS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_SELF_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_EDIT"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_EDIT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_AGIF"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_AGIF:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_BURST_SHOT"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_BURST_SHOT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_MOTION_PANORAMA"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_MOTION_PHOTO"

    invoke-direct {v0, v1, v7}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_MOTION_PHOTO:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_SELF_MOTION_PANORAMA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_SELF_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_OUT_OF_FOCUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_OUT_OF_FOCUS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_360_CONTENTS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_360_CONTENTS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_INTERACTIVE_SHOT_CONTENTS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_INTERACTIVE_SHOT_CONTENTS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_EDIT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_AGIF:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_BURST_SHOT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_MOTION_PHOTO:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_SELF_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_OUT_OF_FOCUS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_360_CONTENTS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_INTERACTIVE_SHOT_CONTENTS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    return-object v0
.end method
