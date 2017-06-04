.class Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;
.super Ljava/lang/Object;
.source "XDMDDFParser.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/eng/core/XDMXml;


# instance fields
.field eTagID:[I

.field nTagSP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->eTagID:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/omcagent/dm/eng/parser/XDMTndsTagManage;->nTagSP:I

    return-void
.end method
