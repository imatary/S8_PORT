.class public Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "EnhancedAssistantMenu.java"


# static fields
.field public static final ACTION_CAMERA:Ljava/lang/String; = "android.intent.action.camera"

.field public static final ACTION_DELETE:Ljava/lang/String; = "android.intent.action.delete"

.field public static final ACTION_SLIDESHOW:Ljava/lang/String; = "android.intent.action.slideshow"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "ActivityName"

.field private static final ASSISTANT_MENU_ON:I = 0x1

.field private static final ICON_NAME:Ljava/lang/String; = "IconName"

.field private static final MENU_CAMERA:Ljava/lang/String; = "Camera"

.field private static final MENU_DELETE:Ljava/lang/String; = "Delete"

.field private static final MENU_SLIDESHOW:Ljava/lang/String; = "Slideshow"

.field private static final REGISTER:Ljava/lang/String; = "register"

.field private static final TAG:Ljava/lang/String; = "EnhancedAssistantMenu"


# instance fields
.field private final mAccessibilityManager:Lcom/sec/samsung/gallery/lib/libinterface/AccessibilityManagerInterface;

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mRegistered:Z

.field private final mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mRegistered:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/AccessibilityManagerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/AccessibilityManagerFactory;-><init>()V

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/AccessibilityManagerInterface;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mAccessibilityManager:Lcom/sec/samsung/gallery/lib/libinterface/AccessibilityManagerInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.intent.action.camera"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-nez v2, :cond_2

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "android.intent.action.camera"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCrossPicker()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.intent.action.slideshow"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.delete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of v2, v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.intent.action.camera"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMenuList()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Camera;"

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "Camera;"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->isFromSmartManager(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "Delete;"

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCrossPicker()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->isFromTaskEdge(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "Delete;Slideshow;"

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    if-eqz v1, :cond_7

    const-string/jumbo v1, "Camera;"

    goto :goto_0

    :cond_7
    const-string/jumbo v1, ";"

    goto :goto_0
.end method

.method private isEnabledAssistatnMenu(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/lib/factory/SettingsSystemWrapper;->ASSISTANT_MENU:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isFromSmartManager(Landroid/app/Activity;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "smartmanager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isFromTaskEdge(Landroid/app/Activity;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "view_item"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public registerEAM(Landroid/content/BroadcastReceiver;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "EnhancedAssistantMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Register the EAM Receiver mRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->isEnabledAssistatnMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mRegistered:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "ActivityName"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "IconName"

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->getMenuList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "register"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mAccessibilityManager:Lcom/sec/samsung/gallery/lib/libinterface/AccessibilityManagerInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1, v0, v2}, Lcom/sec/samsung/gallery/lib/libinterface/AccessibilityManagerInterface;->assistantMenuUpdate(Landroid/os/Bundle;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mRegistered:Z

    goto :goto_0
.end method

.method public unregisterEAM(Landroid/content/BroadcastReceiver;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->isEnabledAssistatnMenu(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "EnhancedAssistantMenu"

    const-string/jumbo v3, "Unregister the EAM Receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "ActivityName"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "register"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mAccessibilityManager:Lcom/sec/samsung/gallery/lib/libinterface/AccessibilityManagerInterface;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v2, v0, v3}, Lcom/sec/samsung/gallery/lib/libinterface/AccessibilityManagerInterface;->assistantMenuUpdate(Landroid/os/Bundle;Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->mRegistered:Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "EnhancedAssistantMenu"

    const-string/jumbo v3, "IllegalArgumentException : unregiseter EAM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
