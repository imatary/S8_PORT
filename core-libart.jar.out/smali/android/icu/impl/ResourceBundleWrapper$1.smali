.class final Landroid/icu/impl/ResourceBundleWrapper$1;
.super Ljava/lang/Object;
.source "ResourceBundleWrapper.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$resName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/ResourceBundleWrapper$1;->val$cl:Ljava/lang/ClassLoader;

    iput-object p2, p0, Landroid/icu/impl/ResourceBundleWrapper$1;->val$resName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper$1;->val$cl:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper$1;->val$cl:Ljava/lang/ClassLoader;

    iget-object v1, p0, Landroid/icu/impl/ResourceBundleWrapper$1;->val$resName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper$1;->val$resName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/ResourceBundleWrapper$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
