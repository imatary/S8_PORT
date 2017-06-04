.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;
.super Ljava/lang/Object;
.source "XDMOmTree.java"


# instance fields
.field public m_szServerId:Ljava/lang/String;

.field public vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->vfs:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmVfs;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmTree;->m_szServerId:Ljava/lang/String;

    return-void
.end method
