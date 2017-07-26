.class public Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;
.super Ljava/lang/Object;
.source "Volleyer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navercorp/volleyextensions/volleyer/Volleyer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Settings"
.end annotation


# instance fields
.field private configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

.field private isDefaultVolleyer:Z

.field final synthetic this$0:Lcom/navercorp/volleyextensions/volleyer/Volleyer;


# direct methods
.method private constructor <init>(Lcom/navercorp/volleyextensions/volleyer/Volleyer;)V
    .locals 1

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->this$0:Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->isDefaultVolleyer:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/navercorp/volleyextensions/volleyer/Volleyer;Lcom/navercorp/volleyextensions/volleyer/Volleyer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;-><init>(Lcom/navercorp/volleyextensions/volleyer/Volleyer;)V

    return-void
.end method

.method private setConfigurationToVolleyerIfNotNull()V
    .locals 2

    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->this$0:Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    iget-object v1, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    invoke-static {v0, v1}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->access$102(Lcom/navercorp/volleyextensions/volleyer/Volleyer;Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;)Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    goto :goto_0
.end method

.method private setDefaultVolleyerIfTrue()V
    .locals 1

    iget-boolean v0, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->isDefaultVolleyer:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->this$0:Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    invoke-static {v0}, Lcom/navercorp/volleyextensions/volleyer/Volleyer;->access$202(Lcom/navercorp/volleyextensions/volleyer/Volleyer;)Lcom/navercorp/volleyextensions/volleyer/Volleyer;

    goto :goto_0
.end method


# virtual methods
.method public done()V
    .locals 0

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->setConfigurationToVolleyerIfNotNull()V

    invoke-direct {p0}, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->setDefaultVolleyerIfTrue()V

    return-void
.end method

.method public setAsDefault()Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->isDefaultVolleyer:Z

    return-object p0
.end method

.method public setConfiguration(Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;)Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;
    .locals 1

    const-string/jumbo v0, "VolleyerConfiguration"

    invoke-static {p1, v0}, Lcom/navercorp/volleyextensions/volleyer/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/navercorp/volleyextensions/volleyer/Volleyer$Settings;->configuration:Lcom/navercorp/volleyextensions/volleyer/VolleyerConfiguration;

    return-object p0
.end method
