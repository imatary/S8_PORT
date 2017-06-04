.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;
.super Ljava/lang/Object;
.source "XDMNode.java"


# instance fields
.field public next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;

.field public obj:Ljava/lang/Object;

.field public previous:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMNode;->obj:Ljava/lang/Object;

    return-void
.end method
