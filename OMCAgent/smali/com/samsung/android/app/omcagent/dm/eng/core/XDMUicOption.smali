.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;
.super Ljava/lang/Object;
.source "XDMUicOption.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XUICInterface;


# instance fields
.field public UICType:I

.field public appId:I

.field public defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

.field public echoType:I

.field public inputType:I

.field public m_szUicMenuTitle:Ljava/lang/String;

.field public maxDT:I

.field public maxLen:I

.field public minDT:I

.field public progrCurSize:J

.field public progrMaxSize:J

.field public progrType:I

.field public text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

.field public uicMenuList:[Ljava/lang/String;

.field public uicMenuNumbers:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->text:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    new-instance v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMUicOption;->defaultResponse:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMText;

    return-void
.end method
