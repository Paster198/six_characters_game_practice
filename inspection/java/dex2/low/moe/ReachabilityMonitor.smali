.class public Llow/moe/ReachabilityMonitor;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ReachabilityMonitor.java"


# static fields
.field private static sMonitor:Llow/moe/ReachabilityMonitor;


# instance fields
.field private final _connectivityManager:Landroid/net/ConnectivityManager;

.field private _isOnCellular:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Llow/moe/ReachabilityMonitor;->_isOnCellular:Z

    .line 32
    sput-object p0, Llow/moe/ReachabilityMonitor;->sMonitor:Llow/moe/ReachabilityMonitor;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private inspectNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    iput-boolean p1, p0, Llow/moe/ReachabilityMonitor;->_isOnCellular:Z

    return-void
.end method

.method public static sharedInstance(Landroid/content/Context;)Llow/moe/ReachabilityMonitor;
    .registers 2

    .line 22
    sget-object v0, Llow/moe/ReachabilityMonitor;->sMonitor:Llow/moe/ReachabilityMonitor;

    if-nez v0, :cond_14

    if-eqz p0, :cond_c

    .line 26
    new-instance v0, Llow/moe/ReachabilityMonitor;

    invoke-direct {v0, p0}, Llow/moe/ReachabilityMonitor;-><init>(Landroid/content/Context;)V

    goto :goto_14

    .line 24
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Tried to fetch the ReachabilityMonitor singleton, which is not initialized, without a context dependency passed as an argument"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_14
    :goto_14
    sget-object p0, Llow/moe/ReachabilityMonitor;->sMonitor:Llow/moe/ReachabilityMonitor;

    return-object p0
.end method


# virtual methods
.method public isOnCellular()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Llow/moe/ReachabilityMonitor;->_isOnCellular:Z

    return v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 61
    iget-object v0, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-direct {p0, p1}, Llow/moe/ReachabilityMonitor;->inspectNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_b
    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 105
    iget-object p2, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-direct {p0, p1}, Llow/moe/ReachabilityMonitor;->inspectNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_b
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    if-eqz p2, :cond_5

    .line 91
    invoke-direct {p0, p2}, Llow/moe/ReachabilityMonitor;->inspectNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_5
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 98
    iget-object p2, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-direct {p0, p1}, Llow/moe/ReachabilityMonitor;->inspectNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_b
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .registers 3

    if-eqz p1, :cond_b

    .line 68
    iget-object p2, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-direct {p0, p1}, Llow/moe/ReachabilityMonitor;->inspectNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_b
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 75
    iget-object v0, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-direct {p0, p1}, Llow/moe/ReachabilityMonitor;->inspectNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_b
    return-void
.end method

.method public onUnavailable()V
    .registers 3

    .line 82
    iget-object v0, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 83
    iget-object v0, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-direct {p0, v0}, Llow/moe/ReachabilityMonitor;->inspectNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    :cond_17
    return-void
.end method

.method public start()V
    .registers 2

    .line 38
    iget-object v0, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public stop()V
    .registers 2

    .line 43
    iget-object v0, p0, Llow/moe/ReachabilityMonitor;->_connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
