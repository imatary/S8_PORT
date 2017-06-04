.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;
.super Ljava/lang/Object;
.source "XDMVfspace.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;


# instance fields
.field end:[I

.field i:I

.field start:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x400

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->i:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->start:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMVfspace;->end:[I

    return-void
.end method
