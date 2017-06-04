.class Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;
.super Ljava/lang/Object;
.source "CMHInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/access/cmh/CMHInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShareSmallItem"
.end annotation


# instance fields
.field public mFileId:I

.field public mOriginalFileId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;->mOriginalFileId:I

    iput v0, p0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;->mFileId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/access/cmh/CMHInterface$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$ShareSmallItem;-><init>()V

    return-void
.end method
