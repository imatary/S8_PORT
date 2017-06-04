.class public final enum Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;
.super Ljava/lang/Enum;
.source "PostGalleryCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/PostGalleryCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostGalleryCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

.field public static final enum CREATE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

.field public static final enum DESTROY:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

.field public static final enum PAUSE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

.field public static final enum RESUME:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

.field public static final enum RUN:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    const-string/jumbo v1, "CREATE"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->CREATE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    const-string/jumbo v1, "DESTROY"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->DESTROY:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    const-string/jumbo v1, "RESUME"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RESUME:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    const-string/jumbo v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->PAUSE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    new-instance v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    const-string/jumbo v1, "RUN"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RUN:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    sget-object v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->CREATE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->DESTROY:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RESUME:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->PAUSE:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->RUN:Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->$VALUES:[Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/controller/PostGalleryCmd$PostGalleryCmdType;

    return-object v0
.end method
