.class Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumChoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaViewAdapter"
.end annotation


# instance fields
.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)V

    return-void
.end method

.method private getViewAlbumList(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;I)V
    .locals 10

    const v9, 0x7f020280

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, p2, -0x1

    :goto_0
    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/view/ViewGroup$LayoutParams;II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/view/ViewGroup$LayoutParams;II)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->subText:Landroid/widget/TextView;

    const-string/jumbo v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_1
    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x106000d

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$900()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->bucketicon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->bucketicon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f020068

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v3, v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2400(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->bucketicon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->bucketicon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v3, p2, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2500(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;ILcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;)V

    :goto_2
    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    move v2, p2

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    iget-object v4, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/view/ViewGroup$LayoutParams;II)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f020281

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private getViewCreateAlbum(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$900()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2100(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/view/ViewGroup$LayoutParams;II)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2200()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v7, v1, v7, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020067

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f02032e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10001c

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->bucketicon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    iget-object v3, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v2, v3, v0, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/view/ViewGroup$LayoutParams;II)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02005c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$300(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02005b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const v6, 0x7f0b047c

    const/4 v5, 0x0

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1800(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1700(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)I

    move-result v2

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;-><init>(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$1;)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$900()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120145

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->bucketicon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->bucketicon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$2000(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;Landroid/view/ViewGroup$LayoutParams;II)V

    :cond_0
    const v1, 0x7f120144

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f120146

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0317

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f120148

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    const v1, 0x7f120143

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->view:Landroid/view/View;

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120147

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->subText:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->subText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0315

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;

    iput p1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->position:I

    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    array-length v1, v1

    if-ne p1, v1, :cond_6

    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->getViewCreateAlbum(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    array-length v1, v1

    if-ne p1, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_a

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-object p2

    :cond_6
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_7

    if-lez p1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    array-length v1, v1

    if-le p1, v1, :cond_8

    :cond_7
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1100()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_9

    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->getViewAlbumList(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;I)V

    goto :goto_0

    :cond_9
    const-string/jumbo v1, "AlbumChoiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ArrayOfBoundException length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->this$0:Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;->access$1200(Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity;)[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    iget-object v1, v0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public refreshAdapter(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceActivity$MediaViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
