.class public Lcom/samsung/app/highlightplayer/AppDataManager;
.super Ljava/lang/Object;
.source "AppDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/highlightplayer/AppDataManager$TranscodeElementChangeListener;
    }
.end annotation


# static fields
.field public static isVideoExported:Z


# instance fields
.field private BgmSetFlag:Z

.field private BgmSoundSetFlag:Z

.field private CurrentMusicDuration:I

.field private CurrentMusicFlag:Z

.field private CurrentMusicName:Ljava/lang/String;

.field private CurrentMusicPath:Ljava/lang/String;

.field FirstSongSelected:Z

.field private effectposition:I

.field private mBgmFileNames:[Ljava/lang/String;

.field private mCurrentTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

.field private mTranscodeElementChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/app/highlightplayer/AppDataManager$TranscodeElementChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mfilePathString:[Ljava/lang/String;

.field private themeposition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/app/highlightplayer/AppDataManager;->isVideoExported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->themeposition:I

    iput v3, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->effectposition:I

    iput-boolean v2, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->BgmSetFlag:Z

    iput-boolean v2, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->BgmSoundSetFlag:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->CurrentMusicPath:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->CurrentMusicDuration:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->CurrentMusicName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->CurrentMusicFlag:Z

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "Run"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Mild Nova"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Loving"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->mBgmFileNames:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[DREAM]Theme_01_Run.ogg"

    aput-object v1, v0, v2

    const-string/jumbo v1, "[DREAM]Theme_09_Mild Nova.ogg"

    aput-object v1, v0, v3

    const-string/jumbo v1, "[DREAM]Theme_08_Loving.ogg"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->mfilePathString:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->FirstSongSelected:Z

    return-void
.end method


# virtual methods
.method public getCurrentTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->mCurrentTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    return-object v0
.end method

.method public notifyTranscodeElementChanges(ZIIZZ)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->mCurrentTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/app/video/editor/external/VideoEditor;->update(Lcom/samsung/app/video/editor/external/TranscodeElement;II)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->mTranscodeElementChangedListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->mTranscodeElementChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/highlightplayer/AppDataManager$TranscodeElementChangeListener;

    iget-object v2, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->mCurrentTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-interface {v0, v2, p1, p4, p5}, Lcom/samsung/app/highlightplayer/AppDataManager$TranscodeElementChangeListener;->onTranscodeElementChanged(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;ZZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentTranscodeElement(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->mCurrentTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/AppDataManager;->mCurrentTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getAppAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setAssetManager(Landroid/content/res/AssetManager;)Z

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/highlightplayer/AppDataManager;->notifyTranscodeElementChanges(ZIIZZ)V

    :cond_0
    return-void
.end method
