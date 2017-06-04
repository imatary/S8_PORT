.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Address;
.super Ljava/lang/Object;
.source "RShare.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$AddressColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.samsung.android.coreapps.rshare/address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Address;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
