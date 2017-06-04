.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;
.super Ljava/lang/Object;
.source "XDMText.java"


# instance fields
.field public len:I

.field public size:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->text:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->len:I

    iput v1, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;->size:I

    return-void
.end method
