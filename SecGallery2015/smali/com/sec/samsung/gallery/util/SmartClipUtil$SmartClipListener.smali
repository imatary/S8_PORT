.class public Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;
.super Ljava/lang/Object;
.source "SmartClipUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/SmartClipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartClipListener"
.end annotation


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mRectOfBounds:Landroid/graphics/Rect;

.field private final mRectOfImage:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->mRectOfImage:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->mRectOfBounds:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->mRectOfImage:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;->mRectOfBounds:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public getClipDataListener()Lcom/sec/samsung/gallery/lib/libinterface/SmartClipDataHelperInterface$onClipDataListenerForDetailView;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener$1;-><init>(Lcom/sec/samsung/gallery/util/SmartClipUtil$SmartClipListener;)V

    return-object v0
.end method
