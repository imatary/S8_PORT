.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$2100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$2100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$2200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v3

    int-to-float v4, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$2200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v3

    int-to-float v5, v3

    const/4 v7, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setTag(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$2300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter$1;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setCategoryItemSelectListener(Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$CategoryItemSelectListener;)V

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter$2;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDeleteClickListener(Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$DeleteClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I

    move-result v1

    if-ne v1, v9, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDeleteButtonVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDim(Z)V

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
