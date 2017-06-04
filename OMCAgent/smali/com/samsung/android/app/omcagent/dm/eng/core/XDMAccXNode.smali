.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAccXNode;
.super Lcom/samsung/android/app/omcagent/dm/db/XDBAccXNodeInfo;
.source "XDMAccXNode.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/dm/db/XDBAccXNodeInfo;-><init>()V

    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OMC"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAccXNode;->account:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OMC/AppAddr/omc"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAccXNode;->appAddr:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OMC/AppAddr/omc/Port/omc"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAccXNode;->appAddrPort:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OMC/AppAuth/client"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAccXNode;->clientAppAuth:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OMC/AppAuth/server"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAccXNode;->serverAppAuth:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    const-string v1, "./DMAcc/OMC/ToConRef/Connectivity Reference Name"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMAccXNode;->toConRef:Ljava/lang/String;

    return-void
.end method
