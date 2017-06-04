.class public Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "AlbumDexContextMenuForEmptySpace.java"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v2, v1

    :goto_0
    return v2

    :pswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_VIEW_AS_DIALOG:I

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "101"

    const-string/jumbo v3, "1081"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "ALNO"

    const-string/jumbo v4, "Create album"

    invoke-static {v1, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_NEW_ALBUM:I

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "101"

    const-string/jumbo v4, "1016"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "isMultiWindow"

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "101"

    const-string/jumbo v3, "1017"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_CONTACT_US:I

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f120279
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method onCreateContextMenu(Landroid/view/ContextMenu;)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEmptySpace;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method
