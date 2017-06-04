.class Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;
.super Ljava/lang/Object;
.source "XmpDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Section"
.end annotation


# instance fields
.field private final mData:[B

.field private final mLength:I

.field private final mMarker:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mMarker:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mLength:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mData:[B

    return-void
.end method

.method synthetic constructor <init>(II[BLcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;-><init>(II[B)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)[B
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mData:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mMarker:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/spherical/XmpDecoder$Section;->mLength:I

    return v0
.end method
