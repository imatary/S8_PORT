.class public Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;
.super Ljava/lang/Object;
.source "CollageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageMetaData"
.end annotation


# instance fields
.field private height:I

.field private path:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->path:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->width:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->height:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->height:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->path:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->uri:Landroid/net/Uri;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageUtils$ImageMetaData;->width:I

    return-void
.end method
