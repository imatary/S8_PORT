.class public Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;
.super Ljava/lang/Object;
.source "MediaPlayerFactory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/factory/LibFactory;


# static fields
.field public static final KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I

.field public static final KEY_PARAMETER_WFD_TCP_DISABLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x88bc

    sput v0, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;->KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I

    const/16 v0, 0x9c4

    sput v0, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;->KEY_PARAMETER_WFD_TCP_DISABLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;-><init>()V

    return-object v0
.end method
