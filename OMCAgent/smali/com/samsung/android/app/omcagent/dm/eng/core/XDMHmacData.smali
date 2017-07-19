.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMHmacData;
.super Ljava/lang/Object;
.source "XDMHmacData.java"


# instance fields
.field public httpContentLength:I

.field public httpHeaderLength:I

.field public m_szHmacAlgorithm:Ljava/lang/String;

.field public m_szHmacDigest:Ljava/lang/String;

.field public m_szHmacUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMHmacData;->m_szHmacAlgorithm:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMHmacData;->m_szHmacUserName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMHmacData;->m_szHmacDigest:Ljava/lang/String;

    return-void
.end method
