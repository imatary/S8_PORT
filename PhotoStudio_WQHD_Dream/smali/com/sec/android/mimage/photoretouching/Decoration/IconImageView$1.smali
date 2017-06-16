.class Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView$1;
.super Ljava/lang/Object;
.source "IconImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->setIconBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/IconImageView;->invalidate()V

    return-void
.end method
