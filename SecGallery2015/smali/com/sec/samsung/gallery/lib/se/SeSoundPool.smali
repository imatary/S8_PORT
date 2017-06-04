.class public Lcom/sec/samsung/gallery/lib/se/SeSoundPool;
.super Ljava/lang/Object;
.source "SeSoundPool.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/SoundPoolInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setStreamType(Landroid/media/SoundPool;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/media/SoundPool;->semSetStreamType(I)V

    return-void
.end method
