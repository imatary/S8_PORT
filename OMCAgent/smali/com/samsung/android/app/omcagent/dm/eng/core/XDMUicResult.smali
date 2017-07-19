.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;
.super Ljava/lang/Object;
.source "XDMUicResult.java"


# instance fields
.field public MenuNumbers:I

.field public MultiSelected:[I

.field public SingleSelected:I

.field public UICType:I

.field UIC_MAX_CHOICE_MENU:I

.field public appId:I

.field public result:I

.field public text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->UIC_MAX_CHOICE_MENU:I

    iget v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->UIC_MAX_CHOICE_MENU:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicResult;->MultiSelected:[I

    return-void
.end method
