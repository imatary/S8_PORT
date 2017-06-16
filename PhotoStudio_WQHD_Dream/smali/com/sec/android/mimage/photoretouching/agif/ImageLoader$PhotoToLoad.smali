.class Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public bitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

.field public imageView:Landroid/widget/ImageView;

.field public position:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

.field public url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;Landroid/net/Uri;Landroid/widget/ImageView;ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->url:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->bitmapInfo:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;->position:I

    return-void
.end method
