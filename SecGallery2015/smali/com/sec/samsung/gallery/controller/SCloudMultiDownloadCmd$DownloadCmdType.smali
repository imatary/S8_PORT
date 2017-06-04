.class final enum Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;
.super Ljava/lang/Enum;
.source "SCloudMultiDownloadCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DownloadCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_IMAGE:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_IMAGES:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_ITEMS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_UNKNOWN:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_VIDEO:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

.field public static final enum DOWNLOAD_VIDEOS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_ITEMS"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_ITEMS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_IMAGES"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGES:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_VIDEOS"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEOS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_IMAGE"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGE:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEO:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const-string/jumbo v1, "DOWNLOAD_UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_UNKNOWN:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_ITEMS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGES:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEOS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGE:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEO:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_UNKNOWN:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    return-object v0
.end method
