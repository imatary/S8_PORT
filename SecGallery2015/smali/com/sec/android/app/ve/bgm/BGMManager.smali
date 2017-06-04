.class public Lcom/sec/android/app/ve/bgm/BGMManager;
.super Ljava/lang/Object;
.source "BGMManager.java"


# instance fields
.field private bgmMode:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

.field private isThemeDefaultBGM:Z

.field private final overlapTrans:I

.field private savedBGMPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/ve/bgm/BGM$BGMModes;->MEDIUM:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    iput-object v0, p0, Lcom/sec/android/app/ve/bgm/BGMManager;->bgmMode:Lcom/sec/android/app/ve/bgm/BGM$BGMModes;

    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/app/ve/bgm/BGMManager;->savedBGMPos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/bgm/BGMManager;->isThemeDefaultBGM:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/bgm/BGMManager;->overlapTrans:I

    return-void
.end method
