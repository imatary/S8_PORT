.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter$1;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem$CategoryItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCategoryItemSelected(Lcom/samsung/android/glview/GLView;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    const/4 v2, 0x1

    invoke-static {v1, p2, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$700(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;II)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getEventIdByCommandId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
