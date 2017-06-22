.class Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;
.super Ljava/lang/Object;
.source "ImageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 13

    const v9, 0x7f0e00d4

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    move-object v4, v9

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->isMarkedForDelete()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v8, v8, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    const/4 v10, 0x1

    if-gt v9, v10, :cond_2

    const/4 v9, 0x0

    :goto_1
    return v9

    :cond_2
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v5, v4

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    const/16 v10, 0xbb8

    if-ge v9, v10, :cond_3

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    const/16 v10, 0xbb8

    if-ge v9, v10, :cond_3

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v11

    const/4 v12, 0x1

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->createScaledImageBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    invoke-static {v9, v0, v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    new-instance v6, Landroid/content/ClipData$Item;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v6, v9}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "text/plain"

    aput-object v12, v10, v11

    invoke-direct {v2, v9, v10, v6}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    new-instance v7, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {v7, v5, v9, v1}, Lcom/sec/android/mimage/photoretouching/agif/MyDragShadowBuilder;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v2, v7, v9, v10}, Landroid/widget/ImageView;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v9

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    const/16 v10, 0xbb8

    if-le v9, v10, :cond_4

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    const/16 v10, 0xbb8

    if-ge v9, v10, :cond_4

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/16 v10, 0x3e8

    const/16 v11, 0x1f4

    const/4 v12, 0x1

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->createScaledImageBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    invoke-static {v9, v0, v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    const/16 v10, 0xbb8

    if-le v9, v10, :cond_5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    const/16 v10, 0xbb8

    if-ge v9, v10, :cond_5

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/16 v10, 0x1f4

    const/16 v11, 0x3e8

    const/4 v12, 0x1

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->createScaledImageBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    invoke-static {v9, v0, v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    const/16 v10, 0x258

    const/16 v11, 0x258

    const/4 v12, 0x1

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->createScaledImageBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    invoke-static {v9, v0, v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2
.end method
