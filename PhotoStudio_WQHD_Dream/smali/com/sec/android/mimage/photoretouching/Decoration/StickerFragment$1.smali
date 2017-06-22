.class Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$1;
.super Ljava/lang/Object;
.source "StickerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment$1;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    const-string v0, "StickerFragment"

    const-string v1, "onPageScrollStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    const-string v0, "StickerFragment"

    const-string v1, "onPageScrolled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    sput p1, Lcom/sec/android/mimage/photoretouching/Decoration/StickerFragment;->mCurrentStickerCategory:I

    return-void
.end method
