.class public Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;
.super Ljava/lang/Object;
.source "DeviceCogApplicationListenerImpl.java"


# static fields
.field private static final DEFAULT_TAB:[Ljava/lang/String;

.field private static final SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDCActivityInfoListener:Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;

.field private final mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "PicturesView"

    aput-object v1, v0, v4

    const-string/jumbo v1, "AlbumsListView"

    aput-object v1, v0, v5

    const-string/jumbo v1, "StoryListView"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string/jumbo v2, "MtpView"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->DEFAULT_TAB:[Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "PicturesView"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->DEFAULT_TAB:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "PicturePickerSingle"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "AlbumListPicker"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "PicturePickerMulti"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "AlbumListPicker"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumsListView"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->DEFAULT_TAB:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumListPicker"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "PicturePickerMulti"

    aput-object v3, v2, v4

    const-string/jumbo v3, "PicturePickerSingle"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "StoryListView"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->DEFAULT_TAB:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "MtpView"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->DEFAULT_TAB:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationHandlerImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationHandlerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->isEnableSwitchState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;)Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->mDCActivityInfoListener:Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;)Lcom/samsung/android/devicecog/DeviceCogHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->mHandler:Lcom/samsung/android/devicecog/DeviceCogHandler;

    return-object v0
.end method

.method private isEnableSwitchState(Ljava/lang/String;)Z
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->mDCActivityInfoListener:Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->mDCActivityInfoListener:Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;

    invoke-interface {v3}, Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;->getCurrentDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->SUPPORT_SWITCH_STATE_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onDeviceCogApplicationCreate()V
    .locals 2

    const-string/jumbo v0, "DCAppListenerImpl"

    const-string/jumbo v1, "onDeviceCogApplicationCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "Gallery"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl$1;-><init>(Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    return-void
.end method

.method public setDCActivityInfoListener(Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogApplicationListenerImpl;->mDCActivityInfoListener:Lcom/samsung/android/devicecog/gallery/DCActivityInfoListener;

    return-void
.end method
