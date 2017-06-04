.class public Lcom/sec/samsung/gallery/core/Event$Builder;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/core/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/sec/samsung/gallery/core/Event;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/core/Event;-><init>()V

    return-object v0
.end method
