.class public Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "AudioManagerWrapper.java"


# static fields
.field public static final IMPLICIT:Ljava/lang/String;

.field public static final SOUND_TOUCH:I

.field public static final TOUCH_TONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    const-string/jumbo v0, "situation=1"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->TOUCH_TONE:Ljava/lang/String;

    const-string/jumbo v0, ";device=0"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->IMPLICIT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
