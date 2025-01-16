const isAnagram = function(s, t) {
    
    const counts = new Array(26).fill(0);
    const a = 'a'.charCodeAt(0);

    for (let i = 0; i < s.length; i++) {
        counts[s.charCodeAt(i) - a]++;
    }
    
    for (let i = 0; i < t.length; i++) {
        counts[t.charCodeAt(i) - a]--;
    }
    
    return counts.every(count => count === 0);
};